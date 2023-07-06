import unittest
import identicon


class TestCase(unittest.TestCase):

    def setUp(self):
        identicon.app.config["TESTING"] = True
        self.app = identicon.app.test_client()

    def test_get_mainpage(self):
        page = self.app.post("/", data=dict(name="identicon String"))
        assert page.status_code == 200
        assert 'Show identicon of' in str(page.data)
        assert 'Your identicon looks like a monster: ' in str(page.data)
        assert 'identicon String' in str(page.data)

    def test_html_escaping(self):
        page = self.app.post("/", data=dict(name='"><script language="javascript">alert("You were hacked")</script>'))
        assert '<script' not in str(page.data)


if __name__ == '__main__':
    unittest.main()
