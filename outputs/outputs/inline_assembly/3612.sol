pragma solidity ^0.8.0;
contract SemanticallyEquiv {
  assembly {
    let r := 1

    let y := add(a, r)
    let z := add(b, y)
    let w := add(a, a)
    let x := add(a, w)
    let azz := add(w, w)
    let u: address := x

    sub(r, 1)

    let j := r
    let x := r
    let s := j
    pop(j, x)
  }
}

pragma solidity ^0.8.0;
contract MultifunctionEquivalence {
  address public a;
  uint public b;
  uint public c;
  uint public d;
  uint public e;
  address public f;
  constructor() {
    a = a;
    b = 1;
    c = c;
    d = d;
    e = e;
    f = address(this);
  }

  function g(uint x) public pure returns (uint) {
  {
    return x;
  }
}

  function z() public {

    a = address(b);
    b = b;
    c = e;
    d = f;
    e = f;
    f = getAddress();
  }
}
