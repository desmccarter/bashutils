# AUTHOR	: Des McCarter
# DESCRIPTION	: Basic General Bash utilities


function writeToStdout(){

	outputType="${1}"
	text="${2}"

	printf "[%-20s] %s\n" "${outputType}" "${text}"
}


function info(){
	text="${1}"

	writeToStdout "INFO" "${text}"
}

function error(){
	text="${1}"

	writeToStdout "ERROR" "${text}"
}

function warn(){
	text="${1}"

	writeToStdout "WARN" "${text}"
}

function usage(){

	if [[ ! -z "${USAGE}" ]]
	then
			info "USAGE	:"
			info "		 ${USAGE}"
	fi

}
