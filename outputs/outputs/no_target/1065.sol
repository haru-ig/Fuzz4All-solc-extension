pragma solidity ^0.8.0;
contract SemanticMutation23
{
    uint256 private constant value = 82;
    address private _target;


    modifier onlyTarget()
    {
        if (msg.sender == _target)
        {
            _;
        }
        else
        {
            revert();
        }
    }

    constructor(address _target)
    {
        _target = _target;
        emit TargetSet(msg.sender, _target);
        _ = _target.send(0);
    }

    function f() public pure returns (uint256)
    {
        return 0;
    }

    function f(uint256 _d, uint256 _d2) public onlyTarget
    {
        _target.send(0x7850, _d, _d2);
    }

}

pragma solidity ^0.8.0;
contract SemanticMutation24
{
    address private _addr;
    constructor(address addr)
    {
        _addr = addr;
    }
   address constant  _target = 0xCf8576800d291cE48fB94325fC54D811E4f2c92B;
    function _send(uint256 gas) internal returns(uint256)
    {
        return _addr.send(gas);
    }

    function f(uint256 _d, uint256 _d2) public
    {
        uint256 gas = 7850;
        _send(gas);
        uint256 output = _send(_d, _d2);
        (bool sent, ) = _addr.call{value: output}(abi.encode{value: 40}(gas));
        if (!sent) {revert();}
    }
}


pragma solidity ^0.8.0;
contract MutatePointerCast
{
    mapping (uint64 => uint256) private map = mapping(uint64 => uint256)(keccak256(abi.encodePacked("key", "value"))) ;
    function f(uint256 data) public returns (string memory, uint256, uint256)
    {
        return (cast(0, 0), uint64(uint256(data)), map[keccak256("key")]) ;
    }
    function g(uint256 data) public returns (uint256, uint256)
    {
        return (data,map["key"]) ;
    }

    function f2(uint64 data) public returns (uint256, uint256)
