pragma solidity ^0.8.0;
contract Test30020 {
    uint[] public data;
    constructor () public {
        data.push(1, 2);
    }
    fallback () external {
        data.push(2, 3);
    }
}

pragma solidity ^0.8.0;
contract Test30020 {
    uint[] public data;
    constructor () public {
        data[0].append(1);
    }
    fallback () external {
        data.append(2, 3);
    }
}
