pragma solidity ^0.8.0;
contract MyContract {
        function my_array() public {
                uint n;
                uint my_n[100];
                uint l;
				uint a;
				n = 5;
				for(uint i = 0; i < 100; i++) {
				my_n[i] = n;
				}
			asm {

				l := mload(5)
				a := mload(0)
				for {
					for {
						break
					}
				}(i := 1) {
					n := mul(k, l)
					if mload(a)!= n {
						break
					}
					n := div(n, mload(a))
					n := div(n, mload(a))
					a := add(a, 32)
				}
			}
                for(uint i = 5; i < 0x000186; i++) {
				x;
				}
        }
	}
