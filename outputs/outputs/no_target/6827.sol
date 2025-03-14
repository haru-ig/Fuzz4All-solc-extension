pragma solidity ^0.8.0;
contract TestMutated731 {
    function div(uint x, uint y) public pure returns (uint) {
        if (y > 0) {
            return 0;
        }
        else {
            y = ~y + 1;
            return x / y;
        }
    }
}

pragma solidity ^0.8.0;
contract TestMutated735 {
  function add(uint x, uint y) public pure returns (uint) {
      return x + y;
    }
    function mul(uint x, uint y) public pure returns (uint) {
        uint z = 0;
        if (y < 0) {
            z = x * ~y;
        } else {
            z = y * x;
        }
        return z;
    }
}

pragma solidity ^0.8.0;
contract TestMutated736 {
    function foo() public {
        address x = msg.sender;
    }
}

pragma solidity ^0.8.0;
contract TestMutated742 {
    uint a;
    function returnsY(uint x) public returns (uint y){
        if (x <= a) {
            return 0;
        }
        else {
           return Y(x, 0x7fffffffffffffff, -2u, -1, -1, 0);
        }
    }
}


/*contract TestMutated742 {
    uint a;
    function returnsY(uint x) public returns (uint y){
        if (x <= a) {
            return 0u;
        }
        else {
            uint xx = 0;
            if (x > a) {
                xx = 0x7fffffffffffffff;
            }
            return Y(x, xx, -2u
