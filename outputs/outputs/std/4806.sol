pragma solidity ^0.8.0;
contract H {
  using H for uint;
  uint public x;
  uint public y;
  function h() public {
    x = 10 ** 18;
    x = add(y, x);
    x = add(x, y);
    x = max(x, y);
    x = sub(y, x);
    x = sub(x, y);
    x = mul(y, x);
    x = mul(x, y);
    x = div(y, x);
    x = div(x, y);
  }
}


pragma solidity ^0.8.0;
contract H {
  using Math for uint;
  uint public x;
  uint public y;
  function h() public {
    x = 10 ** 18;
    x = max(y, x);
    x = sub(y, x);
    x = sub(x, y);
    x = mul(y, x);
    x = mul(x, y);
    x = div(y, x);
    x = div(x, y);
  }
}
