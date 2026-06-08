from selenium import webdriver
from selenium.webdriver.chrome.service import Service as ChromeService
from webdriver_manager.chrome import ChromeDriverManager

class DriverFactory:
    @staticmethod
    def get_driver():
        options = webdriver.ChromeOptions()
        options.add_argument("--disable-popups")  # Disable pop-ups
        options.add_argument("--disable-notifications")  # Disable notifications
        options.add_argument("--start-maximized")  # Start maximized

        driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()),
         options=options)

        return driver