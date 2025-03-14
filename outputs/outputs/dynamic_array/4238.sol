pragma solidity ^0.8.0;
contract G {
    uint256[] x = [ 1, 2, 3 ];
    constructor(uint256[3] memory input) public {
        x.push(input[2]);
        x.push(input[1]);
        x.push(input[0]);
    }
}


 pragma solidity ^0.8.0;
contract G {
    mapping (address => uint256) amounts;
    uint256[] balances;
    constructor(uint256[3] memory input, uint256[3] memory input2) public {
        balances.push(input[0]);
        balances.push(input[1]);
        balances.push(input[2]);
        balances.push(input2[0]);
        balances.push(input2[1]);
        balances.push(input2[2]);
    }
    function increase() public {
        uint256 i = balances.length;
        balances.push( balances[i-1] + 1 );
    }
    function decrease() public {
        uint256 i = balances.length;
        balances[i-1] -= 1;
    }
}

/* Please add a feature of a contract which has a dynamic array as a member. The contract must maintain the original size of the array in storage when using
