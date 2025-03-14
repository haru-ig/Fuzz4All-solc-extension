pragma solidity ^0.8.0;
contract Example14 {
    constructor() public { }

    function example14() public { }
    function example14(uint256 amount) public {

        owner.transfer(amount);

    }
}


pragma solidity ^0.8.0;
contract Example15 {

    constructor() public { }
    function example15(address someOne) public nonPayable { }

    function example16(Example15 example15) public {

        uint256 amount = example15.nonPayable();

    }
}
