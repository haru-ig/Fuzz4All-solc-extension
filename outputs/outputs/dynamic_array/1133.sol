pragma solidity ^0.8.0;
contract EquivalentDynamicArrayAssignment4{
    uint[] private _uintArray;
    constructor(){
        _max=0;
        _uintArray.push(_max);
    }
    function pushMaxAndReturn(){
        _uintArray.push(_max);
        return _max;
    }
    function changeMaxOfArray(){
        _max++;
    }
    function swapFirstAndSecondMax(){
        uint tmp= _uintArray[1];
        _uintArray[1]=_uintArray[0];
        _uintArray[0]=tmp;
    }
}

pragma solidity ^0.8.0;
contract EquivalentDynamicArrayAssignment5{
    uint[] public _uintArray;
    constructor(){
        _max=0;
        _uintArray.push(_max);
        _aMax=_uintArray[1];
        _bMax=_uintArray[0];
    }
    function pushMaxAndReturn(){
        _uintArray.push(_max);
        return _max;
    }
    function changeMaxOfArray(){
        _max++;
    }
    function swapFirstAndSecondMax(){
        uint tmp= _uintArray[1];
        _uintArray[1]=_uintArray[0];
        _uintArray[0]=tmp;
    }
}
