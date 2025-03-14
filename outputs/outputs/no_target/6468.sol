pragma solidity ^0.8.0;
error E1(uint256);
contract contract2 {
    fallback function() public {
        revert(keccak256(abi.encodePacked("Error: ", bytes(mcd(1, 2, 3)))));
    }
    function call() public pure {
        return call(0, "a string", 10);
    }
    function call(uint x) public pure {
        bytes memory m;
        (m, uint y) = call2(x, memory.create(memory(10)));
        bytes memory b = memory.create(memory(10));
        memory.blit(m, b);
    }
    function call2(uint x, bytes memory y) public pure returns (bytes memory, uint){
        bytes memory x = x == 0x0? memory.create(memory(0)) : memory.create(x);
        (y, ) = y == 0x0? (x, 0) : memory.copyInto(memory.create(y), 2);
        (, ) = x;
        (, ) = (x[0], x[2]);
        (, ) = (address(0), address(0));
        (, ) = (2, 5);
        (,) = call2(x, x);
        (,) = call2(0, 0);
    }
    function mcd(uint a, uint b) public pure returns (uint r) {
        do {
            r = b;
            (b,) = (a, r % b);
            (, ) = (b, a % b);
            (, ) = (a, r % b);
        } while (r > 0);
    }
}
pragma solidity ^0.8.10;
contract contract2_with_abicodere_v2 is contract1_with_abicodere_v2{
    mapping(address => uint) public mapInt;
    constructor() { mapInt[address(this)] = 10; }
    function fallback() public payable {
        revert();
    }
    function change(uint _to) public payable {
        uint stored;
        stored = mapInt[_to];
        require(stored!= 0x0, 'can not find'+ _to.toString());
        _to.transfer(_to);
        mapInt[_to] = 10;
    }
}
