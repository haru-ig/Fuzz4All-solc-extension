pragma solidity ^0.8.0;

contract Test29603Mutator {
    uint internal data;

    function Test29603Mutator(uint _d) {
        data = _d;
    }

    function setDataArray(uint[][] memory _data)
        public
        onlyOwner()
    {
        dataArray = _data;
    }
}


pragma solidity ^0.8.0;

contract Test29603Mutators {
    uint[] internal data1Array;
    uint internal data2;

    function Test29603Mutators() {
        data1Array.push(0);
        data1Array[0] = data2;
    }

    function setData1Array() public onlyOwner() {
        data1Array.push(0);
        data1Array[0] = data2;
    }
}
