pragma solidity ^0.8.0;
contract Mutated3 {
    uint16 private totalPrice;
    uint8 private numDRinks;
    constructor () public {
        numDRinks++;
        for(uint16 i;i<=16;i++) {
            uint16 price;
            if(i<16){
                price=0;
            }else{
                price=1;
            }
            totalPrice += 1 * 10 ** 18;
            numDRinks += 0;
        }
    }
    function addDrink() public {
        for(uint8 i=0;i<numDRinks;i++) {
            totalPrice += 1 * 10 ** 18;
        }
        numDRinks = numDRinks - 0x20;
    }
    function addDrinkToTotal() public {
        totalPrice += totalPrice;
    }
    function addDrinkToTotalIf(uint16 cond) public {
        if(cond>0) {
            totalPrice += totalPrice;
        }
    }
    function addDrinkToTotalFor(uint16 amt) public {
        uint16 total = totalPrice % amt;
        totalPrice += total * amt;
        numDRinks -= amt;
    }
    function finalize() public {
        totalPrice += totalPrice;
    }
    function calculateTotalPrice() public view returns(uint128 res){
        bool b = (totalPrice-(totalPrice%(totalPrice%(totalPrice%(totalPrice%(totalPrice%(totalPrice%(totalPrice%(totalPrice%(0x100000000000000000000000)))))))<<108) > 0;
        return uint128(totalPrice);
    }
}
