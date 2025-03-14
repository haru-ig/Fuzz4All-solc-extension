pragma solidity ^0.8.0;
contract EquivalentAsm
{
    function solution(uint _y, uint _z, uint _k) external pure returns (uint){
        using Counters for Counters.Counter;
        uint start = block.number;
        uint end;
        while(block.number-start!= 1)
            {
                assembly
                {
                    rstore(0x0, _y)
                    store(0x20, _z)
                    store(0x40, _k)
                    mstore(0x60, 0)
                    mstore(0x80, 0)
                    mstore(0xA0, 0)
                    mstore(0xC0, 0x9563)
                    mstore(0xE0, 0x456)
                    mstore(104, start)
                    mstore(108, end)

                    let ptr1 := 0
                    let ptr2 := 0
                    let r := mload(ptr1)
                    mstore(ptr1, add(ptr1, 0x20))
                    ptr2 := add(ptr2, 0x40)
                    if eq(sub(ptr1, ptr2), _z)
                    {
                        mstore(ptr1, add(ptr1, 0x60))
                        ptr2 := add(ptr2, 0x40)
                        k := sub(ptr1, r)
                        goto ret
                    }
                    mstore(ptr1, add(ptr1, 0x60))
                }
            }

        end := block.number;

    ret:
    Counters.Counter().increment();
    Counters.Counter().decrement();
    return end;
    }
}
