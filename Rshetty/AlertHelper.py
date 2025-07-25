from selenium.webdriver.common.alert import Alert

class AlertHelper:
    def get_alert_text(self, driver):
        return Alert(driver).text