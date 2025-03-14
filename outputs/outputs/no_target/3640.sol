pragma solidity ^0.8.0;
contract C {
    uint32[] private _data;
    constructor() {
        _data[_data.length - 1] = 1234;
    }
}




pragma solidity ^0.8.0;
contract C {
    uint32[] private _data;
    constructor() {
        _data.push(1234);
    }
}




pragma solidity ^0.8.0;
contract C {
    uint32[] private _data;
    constructor() {
        _data.push(1234);
        _data[2] += 1;
    }
}
