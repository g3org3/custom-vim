// @ts-check
import parser from 'cron-parser'
import chalk from 'chalk'

const colors = ['green', 'blue', 'yellow', 'magenta', 'cyan', 'white', 'red']
/** @type{(t: number) => Promise<void>} */
const delay = (t) => new Promise((r) => setTimeout(r, t * 1000))

/** @typedef {{
  when: string
  run: () => Promise<void> | void
  label?: string
}} Worker
@typedef {{
  when: string
  run: () => Promise<void> | void
  label?: string
  _cron: parser.CronExpression<false>
  _next: Date
  _name: string
  _color: string
}} _Worker */

/**
 * @param {Worker[]} workers
 */
export async function mastercron(workers) {
  const largestNameLength = workers
    .map((w) => (w.label || w.run.name).length)
    .reduce((max, n) => (n > max ? n : max), 0)

  console.log([`[${'started'.padEnd(largestNameLength, '.')}]`, new Date().toLocaleString()].join(' - '))
  /** @type{(worker: _Worker) => void} */
  const lognextrun = (worker) =>
    console.log(
      [
        chalk[worker._color](`[${worker._name.padEnd(largestNameLength, '.')}]`),
        worker._next.toLocaleString() + chalk.dim(' #next-run'),
      ].join(' - ')
    )

  // register them
  /** @type{_Worker[]} */
  const _workers = workers.map((worker, i) => {
    const _cron = parser.parseExpression(worker.when)
    /** @type{_Worker} */
    const _worker = {
      ...worker,
      _cron,
      _next: _cron.next().toDate(),
      _name: worker.label || worker.run.name,
      _color: colors[i] || 'green',
    }
    lognextrun(_worker)

    return _worker
  })

  while (true) {
    _workers.forEach((worker) => {
      let isTimeToRun = Date.now() > worker._next.getTime()
      if (isTimeToRun) {
        try {
          worker.run()
        } catch(e) {
          console.log('failed', e.message)
        }
        worker._next = worker._cron.next().toDate()
        lognextrun(worker)
      }
    })

    await delay(1)
  }
}

process.on('SIGINT', function () {
  console.log(
    `\n✅ The server has been stopped`,
    'Shutdown information',
    'This shutdown was initiated by CTRL+C.\n'
  )
  setTimeout(() => process.exit(0), 200)
})
