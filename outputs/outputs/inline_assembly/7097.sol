pragma solidity ^0.8.0;
contract OptimizelyExample106a {
    uint public x;
    uint public y;
    uint private z;
    constructor () public { }
    function main() public {
        emit LogUpdate(x);
        x = x;
    }
    event LogUpdate(uint _data);
    modifier only_update( ) {
        emit LogUpdate(this.x);
        _;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample107c {
    uint public x;
    uint public y;
    uint public z;
    mapping (uint => uint) private map1;
    mapping (uint => uint[]) private map2;
    mapping (uint => mapping (uint => uint)) private map3;
    mapping (uint => bytes4) private map4;
    constructor () public { }
    function test() public {
        map1[100] = 101;
        map2[102] = [103, 104, 105];
        map3[53] = 1000;
        map4[80] = { is0: false, is1: true, is2: false, is3: true, is4: true};
    }
    modifier not_redeclared( ) {
        assert(map4[100] == 0);
        _;
    }
}
