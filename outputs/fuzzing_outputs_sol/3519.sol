pragma solidity ^0.8.0;
contract ContractBase {
    uint public num;
    constructor() public {
        num = 0;
    }
    function changeNumber(uint _number) public returns (bool) {
        num = _number + num;
        return true;
    }
    function addZeroTwo() public {
        num += 2;
    }
}
contract MutatedStorage {
    uint public num;
    constructor() public {
        num = 0;
    }
    function changeNumber(uint _number) public returns (bool) {
        if (num == 0)
            return ContractBase.changeNumber.value(msg.value)(num);
        else {
            ContractBase tempC = ContractBase(0x0);
            return tempC.changeNumber.value(msg.value)(num);
        }
    }
    function addZeroTwo() public {
        num += 2;
    }
}
address payable to = payable(msg.sender);
address contractAddr = address(new MutatedStorage);

pragma solidity ^0.8.0;
contract MutatedStorage2 {
    address payable a;
    uint public num;
    constructor() public {
        num = 0;
        a = payable(msg.sender);
    }
    function changeNumber(uint _number) public returns (bool) {
        if (num == 0)
            return a.call.value(msg.value.sub(this).add(1n32))("");
        else
            return true;
    }
    function addZeroTwo() public {
        num += 2;
    }
}
