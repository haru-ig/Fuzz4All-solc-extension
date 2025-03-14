pragma solidity ^0.8.0;
contract Test {
    struct S {
        uint256 count;
        uint256 total;
        uint256 total2;
    }
    S public s = S({ count: 0, total: 0, total2: 0 });
    bytes4 constant public setId = bytes4(keccak256('set(uint256,uint256,uint256)'));
    bytes4 constant public getId = bytes4(keccak256('get(uint256,uint256,uint256)'));
    function set(uint count, uint256 total, uint256 total2) public {
        require(sha3({ count: count, total: total, total2: total2 }), 'Invalid signature for set');
        s.count = count;
        s.total = total;
        s.total2 = total2;
    }
    function get(uint count, uint256 total, uint256 total2) public {
        require(sha3({ count: count, total: total, total2: total2 }), 'Invalid signature for get');
        s.count = count;
        s.total = total;
        s.total2 = total2;
    }
    function setId(uint count, uint256 total, uint256 total2) public {
        require(keccak256({ count: count, total: total, total2: total2 }) == address(this).contractId(), 'Invalid signature for setId');
        s.count = count;
        s.total = total;
        s.total2 = total2;
    }
    function getId(uint count, uint256 total, uint256 total2) public {
        require(keccak256({ count: count, total: total, total2: total2 }) == address(this).contractId(), 'Invalid signature for getId');
        s.count = count;
        s.total = total;
        s.total2 = total2;
    }
    fallback() external payable {}
}
