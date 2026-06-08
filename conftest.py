import pytest
from utils.driver_factory import DriverFactory

@pytest.fixture
def driver():
    #driver setup (before test)
    driver = DriverFactory.get_driver()

    yield driver
    #driver teardown (after test)
    driver.quit()