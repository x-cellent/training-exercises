# Make coding more python3-ish
from __future__ import (absolute_import, division, print_function)
__metaclass__ = type

from ansible.plugins.callback import CallbackBase

class CallbackModule(CallbackBase):
    """
    This callback module counts the amount of tasks that were executed.
    """
    CALLBACK_VERSION = 2.0
    CALLBACK_TYPE = 'aggregate'
    CALLBACK_NAME = 'task_counter'
    CALLBACK_NEEDS_WHITELIST = False

    def __init__(self):
        super(CallbackModule, self).__init__()
        self.task_count = 0

    def v2_playbook_on_task_start(self, task, is_conditional):
        self.task_count += 1

    def v2_playbook_on_stats(self, stats):
        self._display.display("%s tasks were executed in total" % self.task_count)
