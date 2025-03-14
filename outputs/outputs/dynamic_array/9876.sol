pragma solidity ^0.8.0;
contract SemanticTest_v7 {
    mapping (address => uint256) balances;
    constructor(uint256 _mintAmount0,uint256 _mintAmount1) public {
        balances[msg.sender] = (_mintAmount0 - _mintAmount1);
    }
}




pragma solidity ^0.8.0;
contract Reentrancy {
    bool private reentrancyFlag;
    constructor()  {
        reentrancyFlag=false;
    }
    modifier validReentrancy(){
        require(!reentrancyFlag, "Reentrancy flag already set");
        reentrancyFlag=true;
        _;
    }
    function callContract() public validReentrancy {
        require(balanceOf(address(this)) > 0);
    }
}
