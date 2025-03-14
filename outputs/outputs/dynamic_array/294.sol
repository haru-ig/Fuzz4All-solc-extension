pragma solidity ^0.8.0;
contract D10 {
    uint256[] public a;
    uint256 a_0_4;
    uint256 a_10_4;

    function set(uint256 x) external {
        a.push(x);
        a_10_4 = 2;
    }

    function get(uint256 i) public view returns (uint256) {
        if(a[i] == 0) return 0x0;
    }
}

pragma solidity ^0.8.0;
contract D11 {
    uint256[] public a;

    constructor() public {
        a.push(0x0);
    }

    function set(uint256 x) external {
        a.push(x);
    }

    function get(uint256 i) public view returns (uint256) {
        return a[i];
    }

    function del(uint256 i) public {
        a.splice(i, 1);
    }

    function delall() public {
        a.clear(); ;
    }
}

pragma solidity ^0.8.0;
contract D12 {
    uint256[] public a;

    function set(uint256 x) external {
        a.push(x);
    }

    function get(uint256 i) public {
    }

    function del(uint256 i) public {
    }

    function delall() public {
    }

    function del2(uint256 x) public {
    }
}
