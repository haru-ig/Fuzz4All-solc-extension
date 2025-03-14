pragma solidity ^0.8.0;
contract Test {
    event LogA(uint indexed arg1, uint indexed arg2);
    event LogB(uint indexed arg1);
    event LogC();
    event LogD(uint, uint);
    event LogE(uint, uint, uint);
    event LogF(uint,uint);

    function f1804(uint[] memory arg1, uint[] memory arg2) public {
        if (arg1.length!= 0) {
            emit LogA(arg1[0] + arg2[0], arg1.length);
        }
        if (arg2.length!= 0) {
            emit LogB(arg2[0]);
        }
        emit LogD(arg1.length, arg2.length);
    }
    mapping(address=>bool) owners;
    modifier onlyOwner {
        require(owners[msg.sender], "!owns");
        _;
        owners[msg.sender] = false;
    }
    function f1805(uint[] memory arg1) public view returns (uint) {
        uint result = getA();
        return arg1.length*2;
    }
    function getA() view public returns (uint) {
        return (arg1*2);
    }
    function f1806(uint num) public onlyOwner {

    }
    function f1807(uint[] memory arg1) public view returns (uint, uint) {
