pragma solidity ^0.8.0;
contract ArrayMut {
	function array(uint64[] memory _r) public pure {
		_r[3] = 2;

		assembly {
			let a := result
			let b := add(a, 3)
			store(b, a, 4)
			let c := get(a, 4)
			if iszero(c) {
				swap(a, 1, b)
				let d := get(a, 1)
				if iszero(d) {
					let e := get(a, 0)
					store(e, a, 2)
					swap(a, 0, c)
				}
			}
		}
	}
}
