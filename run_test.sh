pip install -r requirements.txt

export allure_results_dir=./allure_results
export allure_report_dir=./allure_report

rm -rf $allure_results_dir
rm -rf allure_report_dir

pytest --alluredir=$allure_results_dir
#
#
#allure serve $allure_results_dir
allure generate --clean --report-dir=$allure_report_dir $allure_results_dir
