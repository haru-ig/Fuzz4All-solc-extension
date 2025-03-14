pragma solidity ^0.8.0;
contract SemanticalEquiv10 {
    uint public _value;
    require(uint(uint(_value) + uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(_value + uint(_value)) / uint(3)))))))))))) == uint(_value + uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(_value)))))) / uint(3)))), ((((((uint(_value & ~uint(uint(uint(uint(_value))))) ^ ~uint(uint(uint(uint(_value))))) ^ ~uint(uint(uint(uint(_value))))) ^ ~uint(uint(uint(uint(_value))))))) / uint(3))))))))) == uint(uint(_value + uint(_value) + uint(_value)))));
            function f() public view returns (uint){
                return _value;
            }
    }

}
