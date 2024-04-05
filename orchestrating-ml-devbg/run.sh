run_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
file='presentation.md'
theme='solarized'
css='style.css'


reveal-md "$run_dir/$file" -w --theme $theme --css "$run_dir/$css"
