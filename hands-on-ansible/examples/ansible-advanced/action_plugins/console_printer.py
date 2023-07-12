from ansible.plugins.action import ActionBase

try:
    from __main__ import display
except ImportError:
    from ansible.utils.display import Display
    display = Display()


class ActionModule(ActionBase):
    '''Pretty print a JSON string to the console'''

    def run(self, tmp=None, task_vars=None):

        self._supports_check_mode = True

        result = super(ActionModule, self).run(tmp, task_vars)

        string = self._task.args.get('input', None)
        border = self._task.args.get('border', None)
        heading = self._task.args.get('heading', None)

        if heading:
            display.display(heading + ":")
        if border:
            display.display(border)
        if string:
            display.display(string)
        if border:
            display.display(border)

        display.vvvvvv("I have level six of verbosity!")

        result['changed'] = False
        return result
