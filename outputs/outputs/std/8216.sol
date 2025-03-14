pragma solidity ^0.8.0;
contract SimpleStorage {
    uint public intial = 5;
    function store() public {
    }
    function read() public view returns(uint) {
        return intial;
    }
}
contract ChangeWithStorage {
    uint public intial = 5;
    function store() public {
    }
    function change() public {
        store();
    }
    function read() public view returns(uint) {
        return intial;
    }
}
contract ChangeWithAddress {
    address public intial = address(0x1);
    function store() public {
    }
    function change() public {
        store();
    }
    function read() public view returns(address) {
        return intial;
    }
}
contract AllStorage {
    uint public intial = 5;
    function store() public {
    }
    function store1() public {
    }
    function read() public view returns (uint, uint) {
        return (intial,1);
    }
    function readChangeWithStorage() public view returns (address) {
        return (intial,1);
    }
}
contract Change {
    uint public intial = 5;
    function store() public {
    }
    function changeIntial() public {
        intial = 1;
    }
    function readChange() public view returns(uint) {
        return intial;
    }
}
contract Change2 {
    uint public intial = 5;
    bool public flag;
    uint public random;
    uint public flagRandom;
    uint public random2;
    uint public flagRandom2;
    function store() public {
    }
    function change() public {
        address minter = 0x5;
        emit Log(intial, address(minter));
        if(address(this).balance>=intial){
            intial=intial-intial;
            if(flag==false){
                if(address(this).balance%(2000) == address(this).balance%(100) &&!(flagRandom%10 == 0)){
                    uint random2 = rand(uint(random)*flagRandom);
                    emit Log("Test");
                    emit Log2(intial,address(minter),address(this),random,random2);
                    if(!(random%10 == 0)){
                        emit LogError(intial,address(minter),address(0xFFFFFFFFFFFFFFFF),address(this),uint(22));
                    }else{
                        random2 = 27*((random-flagRandom)/5)+45*(flagRandom-flag);
                        emit LogError(intial,address(minter),address(minter),address(this),uint(22));
                        return;
                    }
                    flagRandom = 1
