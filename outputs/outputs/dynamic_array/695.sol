pragma solidity ^0.8.0;
contract test273 {

    struct Complex {
        bytes32 name;
        bytes32 detail;
        bytes32 owner;
        address contract_addr;
    }

    address public owner;

    mapping(address => Complex) public complex;

    constructor()
        public
    {
        owner = msg.sender;
        complex[owner] = Complex({
            name: "test",
            detail: "",
            owner: owner,
            contract_addr: this
        });
    }

    function get_complex_by_addr(
        address addr
    )
        public
        view
        returns (
            Complex memory
        )
    {
        Complex memory res = complex[addr];
        return res;
    }

    uint[] public uint_return;

    function set_uint_return()
        public
    {
        uint_return = new uint[](2);
        uint_return = new uint[](4);
    }


    function test()
        public
        returns (address)
    {
        Complex memory c = complex[msg.sender];
        return c.contract_addr;
    }

    function get_uint_return()
        public
        view
        returns (
            uint[] memory
        )
    {
        return uint_return;
    }
}
