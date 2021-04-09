import pytest
import requests


class TestClass:
    def test_success(self):
        """this test succeeds"""
        assert True

    def test_url_success(self):
        """this test validate URL response status"""
        expectedStatusCode = 200
        resp = requests.get("https://google.com")
        assert resp.status_code == expectedStatusCode, f"Actual HTTP status code: {resp.status_code} , expected {expectedStatusCode = }"

    def test_success_one_more(self):
        """this test succeeds....there should be more 'green' test %) """
        assert True


    def test_failure(self):
        """this test fails"""
        assert False


    def test_skip(self):
        """this test is skipped"""
        pytest.skip('for a reason!')


    def test_broken(self):
        raise Exception('oops')