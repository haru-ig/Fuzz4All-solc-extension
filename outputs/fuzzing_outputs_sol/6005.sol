pragma solidity ^0.8.0;
contract Modifiers {

    function() public fallback {
        require(msg.value == 0);
    }




    address constant owner = msg.sender;

    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the contract owner");
        _;
    }
}

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Context.sol";

contract Interface1 {
    function getData1() public view returns(uint256){ return 1; }

    function getData2() public view returns(uint256){ return 2; }
}
pragma solidity ^0.8.0;
contract Interface2 {
    function getData3() public view returns(uint){ return 0; }

    function getData4() public view returns(uint256){ return 3; }

    function getData5() public view returns(uint, uint256, uint) {
        return (0, 2, 3);
    }

    function getData6() public view returns(uint, uint256, uint, uint256){
        return (0, 2, 3, 1);
    }
}
pragma solidity ^0.8.0;
contract Caller is Modifiers {
    address contract1_address;
    Interface1 contract_1;

    constructor() public {
        contract1_address = new address[](0).length;
        contract_1 = Interface1(contract1_address);
    }

    fallback() public {
        contract1_address = address(contract_1);
        Interface1 _contract1_modified = Interface1(address(contract1_address));
        uint _value = _contract1_modified.getData1();
        require(msg.value > 0, "Value is zero");
        uint _sum = _value + 100;
        uint256 _balance = address(this).balance;

        require(_sum > _balance, "Sum is greater than contract's balance");
        bytes memory data
