
hash={
	:wat=>[ {:hello =>[]},
		    {:bye =>[]},
		    {:wut =>[
			          [], #0
					  [	
					  	[
					  		{:hh =>[]},   #1
							{:mm =>[]},
							{:ll =>[]},
							{:tt =>[]},
							{:rr =>[]},
							{:xy =>[]},
							{:nn =>[]},
							{:aa =>[]},
							{:rv =>[]},
							{:bbq=> "YES!!!!"}
						]
					  ]
		            ]
	        }

          ]
      }

puts hash[:wat][2][:wut][1][0][9][:bbq]


arr=[ 
	  [
		[],
		[],
		[],
		[],
		[],
		{:secret => { :unlock =>["not the answer","You did it good!!!!"] } } 
	   ]
    ]
puts arr[0][5][:secret[:unlock][1]]