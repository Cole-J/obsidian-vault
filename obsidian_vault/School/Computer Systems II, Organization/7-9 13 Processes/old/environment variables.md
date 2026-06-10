
the actual main call
int main (int argc, char \*\*argv, char \*\*envp)

remember argv is an array of strings with a nullptr at the end


each string of form "name=value"
ex:
	HOME="/home/phil"
	CVSROOT="/home/phil/CVSroot"

int execve(const char \*path, char \*const argv\[], char \*const envp)
int execvp does not take a envp variable
	this is because it takes the current one instead of a specific one being passed


access the environment using these function calls
	access via "extern char \*\*environ"
	but char \*getenv(const char \*name) makes it easier
		getenv points to the string, does not copy so be carful when changing
		-
		if the variable listed in getenv is not defined in the environment it will return a null ptr
		check that its not null
		-
		do not free if not using a copy
		-
		use strdup(3) if you want to mess with it
		ex:
			getenv("HOME") points to / before home in "/home/phil"
	int setenv
		puts a new name=value into the array
	int putenv
		does not have an overwrite, if it has the same name= it just replaces the current value
	void unsetenv
		gets rid of a name=