pragma solidity ^0.8.0;
contract Modul{
        uint s = 5;
        constructor(){
        }
        fallback() external {
            s++;
        }
}

pragma solidity ^0.8.0;
contract contractA {
    Modul modul;
    constructor(Modul modul) {
        modul = modul;
    }
    function getData() public view returns(uint){
        return modul.s;
    }
    fallback() public pure {}
}

pragma solidity ^0.8.0;
contract contractB is contractA{
    constructor() public contractA(new Modul()) {}
    fallback() public pure {}
}
contract Modul{
    uint s;
    constructor(){
        s = 5;
    }
    fallback() external{
        s = s + 3;
    }
}
contract Mutate{
    address payable owner;
    Modul modul;
    uint s;
    constructor() {
        s = 5;
    }
    fallback() public payable {
        modul = new Modul();
        owner.transfer(address(this).balance);
    }
}
contract MutateImpl{
    func Mutate()public {
        Mutate impl = new Mutate;
        impl.setData(msg.sender);
    }
    contract B{
        address payable owner;
        function setData(address payable _owner ) public {
            owner = _owner;
        }
    }
    modifier onlyOwner {
        require(msg.sender == owner, "You are not the contract owner.");
        _;
    }
    function getData() view public returns (uint){
        return modul.s;
    }
    function setNewOwner(address payable _owner) onlyOwner public returns (bool){
        require(owner == address(0), "You can only set new owner once.");
        owner = _owner;
    }
}<fim_middle>contract mutated {
    MutateImpl impl;
    constructor(MutateImpl _impl) public {
        impl = _impl;
    }
    function getData() view public returns (uint){
        return impl.getData();
    }
    function setNewOwner(address _newOwner) public returns (bool){
        return impl.setNewOwner(_newOwner);
    }
}

contract FallbackTest{
    Mutate impl;
    uint s;
    constructor(MutateImpl _impl) public {
        impl = _impl;
    }
    function getData() view public returns (uint){
