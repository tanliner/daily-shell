#! /bin/bash
export PATH
adb root
adb settings put secure user_setup_complete 0
adb settings put global device_provisioned  0
adb shell pm enable com.smartisanos.setupwizard/.SetupWizardActivity
#adb shell am start -n com.smartisanos.setupwizard/.LicenseActivity
adb shell am start -n com.smartisanos.setupwizard/.SetupWizardActivity
echo "done."
