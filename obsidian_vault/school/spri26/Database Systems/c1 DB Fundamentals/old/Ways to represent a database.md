University DB ex:
classroom(*building*, roomnumber, capacity)
departments(*deptname*, building, budget)


Library DB ex (tree)
Loan(*loannum*, copynum, patnum) ->
	Patron(*patno*, patname)
	Copy(*copyno*, libnum, booknum) ->
		Library(*libnum*, libname, location)
		Book(*booknum*, authornum, title) ->
			Author(*Authornum*, authorname)