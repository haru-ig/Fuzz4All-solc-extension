pragma solidity ^0.8.0;

contract Test86New {

    uint[] memory dynArray;

    modifier memArrMod() {
        dynArray.push(value);
        _;
    }

    constructor(uint _value) {
        memArrMod();
        dynArray.push(_value);
    }


    function dynArrayLength() public view returns (uint) {
        uint _length = dynArray.length;
        return _length;
    }
}

```
<p>
    <a href="#" target="_blank">Run Solidity</a>
</p>
<p>
    <a href="#" data-ace-goto="0/215">Run Solidity →</a>
</p>
<p>
    <a href="#" target="_blank">Try Solidity</a>
</p>
<p>
    <a href="#" data-ace-goto="0/218">Try Solidity →</a>
</p>
