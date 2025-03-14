pragma solidity ^0.8.0;


contract IsolateData {
    IsolateData2 isolateData;

    constructor(IsolateData2 _isolateData) {
        isolateData = _isolateData;
    }


    function set(bytes32 keyA, uint keyB) {
        isolateData.data3[keyA] = keyB;
    }
}


pragma solidity ^0.8.0;
contract IsolateData {
    int256[] internal data;
    constructor() {
        data = [1, 2, 3, 4, 5];
    }
}

pragma solidity ^0.8.0;
interface I {
    function f() external view returns (int256, uint8);
}
contract IsolateData {
    I internal i;
    address[] internal data;
    constructor(I _i, address initialAddress) {
        i = _i;
        data = [initialAddress];
    }

    function add() external {
        data.push(address(new int()));
    }
}
