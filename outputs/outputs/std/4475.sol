pragma solidity ^0.8.0;
contract Array {
	uint[] a;
	constructor()
		{
		}
	function find(uint x) public view returns (int) {
		for (uint j = 0; j < a.length; j++) {
			if (a[j] == x)	{
			return j;
			}
		}
	}
	function find_min(uint arr) public view returns (uint) {
		if ((arr < a[0])) {
		  uint min = a[0];
          for (uint n = 0; n < a.length; n++) {
            uint number = a[n];
            if ( number < min ) {
              min = number;
            }
            }
          a[a.length] = min;
          a[0] = arr;
      }
      return min;
	  else {
		  return a[0];
			}
			}
	function find_max(uint arr) public view returns (uint) {
		if (a[0] > arr) {
		  uint min = a[0];
          for (uint n = 0; n < a.length; n++) {
            uint number = a[n];
            if ( number > min ) {
              min = number;
            }
            }
          a[a.length] = min;
          a[0] = arr;
			}
			else {
			return a[0];
			}
			}
	function find_sum() public view returns (uint) {
		uint s = 0;
	  for (uint i = 0; i < a.length; i++) {
		  uint num = a[i];
		  s += num;
	    }
	  return s;
	}
	function clear() public {
		a.length;
		i;
		a.length;
		}
	function set(uint val, uint idx) public {
		if ((uint)a.length == idx)
      {
	  a.push(val);
      }
	    a[idx];
	}
	function sort() public {
		uint n = a.length;
	    for (uint i = 0; i < n-1; i++) {
	      uint min = a[i];
	      uint minidx = i;
	      for (uint j = i+1; j < n; j++) {
	        uint num = a[j];
	        if (num < min) {
	          min = num;
	          minidx = j;
	            }
	      }
	      if (minidx!= i) {
	      a[i] = a[minidx];
	      a[minidx] = min;
		      }
	    }
	}
	}
