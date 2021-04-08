pip install -r requirements.txt

export allure_results_dir=./allure_results
export allure_report_dir=./allure-report
export allure_version=2.13.9

rm -rf $allure_results_dir
rm -rf allure_report_dir

pytest --alluredir=$allure_results_dir

mkdir ./allure-cmd
curl -o "allure-$allure_version.tgz" -Ls "https://repo.maven.apache.org/maven2/io/qameta/allure/allure-commandline/$allure_version/allure-commandline-$allure_version.tgz"
tar -zxvf "allure-$allure_version.tgz" -C ./allure-cmd
eval "./allure-cmd/allure-$allure_version/bin/allure --version"

#allure serve $allure_results_dir
eval "./allure-cmd/allure-$allure_version/bin/allure generate --clean --report-dir=$allure_report_dir $allure_results_dir"
