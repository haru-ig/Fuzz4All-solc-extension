pragma solidity ^0.8.0;
contract OptimizelyExample105bMutated_old {
    D1 public x;
    event Set(uint _x);
    D4 public y;
    mapping (address => uint) public balanceOf;
    constructor () public {
        y = D4({
            f: [{ a: 5, b: 10 }, {a: 1, b: 4}]
        });
    }
    function getX( ) public view returns (uint), view {
        return x.a;
    }
    function mutator_() public returns (function( ) returns (uint), function( ) returns (D2[]), function( ) returns (D5[])) {
        x.a = 10;
        return (function() public pure returns (uint){return 3;}, function() view returns (D2[] ){return y.f;}, function() pure returns (D5[] ){return [D5({array1: [1, 2, 3, 4], array2: [50, 234, 89]})];} );
    }
    function setX(uint value) public {
        x.a = value;
        emit Set(value);
    }
    function setSomeStuff(uint x, uint y) public {
        x = x;
        y = y;
    }
    function setSomeStuff2(uint x, uint y) public {
        x = x;
        y = y;
    }
}
contract OptimizelyExample105b {
    using OptimizelyExample105bMutated for OptimizelyExample105b.OptimizelyExample105bMutated;
    OptimizelyExample105bMutated.OptimizelyExample105bMutated public x;
    mapping (address => uint) public balanceOf;
    constructor () public {
        x = OptimizelyExample105bMutated({
            test___mutated: function( ) public {
                x.test___mutated.call();
                return 0;
            },
            test___mutated_old: function( ) public returns (string memory) {
                return x.test___mutated_old();
            },
            setX: function (uint _x) public {
                x.setX(_x);
                if (msg.balance > balanceOf[msg.sender]) {
                    balanceOf[msg.sender] = msg.balance;
                }
            }
        });
    }
    function get
