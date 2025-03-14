pragma solidity ^0.8.0;
contract test{
    uint[] array_dynamic_75012662149;
    uint[] array_dynamic;
    mapping(bytes32 => address) account;
    modifier only() {
        function __only() pure private returns (bytes32) {
            return "just1";
        }
        account[0x129D70C4E7DB55FF0D962D97d386302Ecb2F646B] = __only;
        _;
    }
    function _constructor(){
        array_dynamic_75012662149[0] = 1;
        array_dynamic_75012662149[1] = 2;
        array_dynamic[0] = 1;
        array_dynamic[1] = 2;
    }
    function assignTest1(uint[] memory memoryParam){
        array_dynamic = memoryParam;
    }
    function assignTest2(){
        array_dynamic_75012662149 = new uint[](2);
    }
    function assignTest3(){
        delete array_dynamic_75012662149;
    }
    function assignTest4(){
        array_dynamic_75012662149.push(255);
    }
    function assignTest5(){
        array_dynamic_75012662149.push(255);
        array_dynamic_75012662149.push(255);
        array_dynamic_75012662149.push(5);
        array_dynamic_75012662149.push(5);
        array_dynamic_75012662149.push(73);
        array_dynamic_75012662149.push(73);
        array_dynamic_75012662149.push(121);
        array_dynamic_75012662149.push(126);
    }

    function assignTest6(){
        uint[] memory memoryParam;
        memoryParam.push(1);
        memoryParam.push(2);
        array_dynamic = memoryParam;
    }
    modifier test1(uint memoryParam, uint memoryParam2){
        if(array_dynamic[0] == memoryParam && array_dynamic[1] == memoryParam2)
            _ = true;
        else
