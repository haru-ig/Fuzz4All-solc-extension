pragma solidity ^0.8.0;
contract SemanticMutation15 {
    function get()
        public
        pure
        returns (uint)
    {
        uint y = 0x0000000000000000000000004000000000003;
        uint x = 0xFFFFFFFFFFFFFFFFFFFFFEFF;
        uint r = -x - x - y + 10;
        assert (r >> 399 < 1);
        r |= 0x3000000000;
        assert (false);
        r >>= 0;
        return r;
    }
}
contract SemanticsContract {
    function f()
        public
        pure
        returns (uint);
    function _isContract(address a)
        internal
        view
        returns (bool);
}
interface IProxy {
    function get(address _proxy, uint _input)
        external
        view
        returns (uint);
}
interface IPoly {
    function get(address, uint _input)
        external
        view
        returns (uint, bytes32);
}
interface IProxyRegistry {
    function get(address _proxy)
        external
        view
        returns (IProxy);
}
interface IPolyRegistry {
    function get(address _proxy)
        external
        view
        returns (iPoly);
}
contract IProxyRegistryMock {
    function get(address _proxy) public view returns (IProxy) {}
}
contract IPolyRegistryMock {
    function get(address _proxy) public view returns (iPoly) {}
}
contract SemanticMutation
