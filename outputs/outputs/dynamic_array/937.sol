pragma solidity ^0.8.0;
contract Solidity {
    address payable payable aaa;
    uint public number = 0;
}
contract S {
    uint public number = 10;

    constructor()
        payable(payable(aaa))
    {
        balances[aaa] += 1 ether;
    }
}
contract A is S {
    function func() public payable {
        aaa.transfer(1 ether);
    }
}
contract B is A {
    constructor(
        ERC20(0x123)
    )
        A(msg.sender)
    {
    }
}
contract C is A {
    constructor(
        ERC20(0x123)
    )
        A()
    {
    }
}
contract A2 {
    address a;
    constructor() public {
        a = msg.sender;


    }
}
contract PayerTest {
    constructor() payable {
        if (msg.value == 0) {
          address payable tester = msg.sender;
          tester.transfer(1 ether);
        }
    }
}
