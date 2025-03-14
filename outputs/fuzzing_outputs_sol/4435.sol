pragma solidity ^0.8.0;
contract DrinkerContract {
    event Drink(address customer, address drink, uint drinkFee);
    struct Customer {
        uint amount;
        address drink;
    }
    struct Drink {
        uint drinkFee;
    }
    address fallbackContract;
    constructor (uint amountForTheDrink, address oldFallbackAddress, address newFallbackAddress) {
        require(address(0) == oldFallbackAddress || address(0).delegatecall(abi.encodeWithSelector(User.changeFallbackContractAddress.selector, oldFallbackAddress, newFallbackAddress)), 'Fallback already changed');
        fallbackContract = payable(newFallbackAddress);
        emit Drink(address(0), oldFallbackAddress, amountForTheDrink);
    }
    function changeFallbackContractAddress(address oldFallbackAddress, address newFallbackAddress) public {
        fallbackContract = payable(newFallbackAddress);
        emit ChangeFallbackContractAddress(FALLBACK_ADDRESS_SLOT_NAME, newFallbackAddress);
    }
    function drink(address drink) public payable {
        bytes32 slot = keccak256('Drinks');
        Drink memory d = readSlot(slot);
        uint amountReceived = msg.value;
        require(address(0)!= address(drink), 'Caller is equal to the contract');
        require(msg.value >= d.drinkFee, 'Not enough Ether received for this drink');
        if(address(0)!= address(this)) {
            payable(drink).transfer(amountReceived);
        }
        emit Drink(msg.sender, drink, d.drinkFee);
        bytes32[] memory data = new bytes32[](1);
        data[0] = slot;
        fallbackContract.delegatecall(abi.encodeWithSelector(User.changeFallbackContractAddress.selector, address(0), fallbackContract));
        try fallbackContract.call(abi.encodeWithSelector(User.changeFallbackContractAddress.selector, address(0), fallbackContract)) returns(){
            emit ChangeFallbackContractAddress(slot, address(contract(this).delegatecall(abi.encodeWithSelector(User.changeFallbackContractAddress.selector, address(0), fallbackContract))))){}
        } catch Error(string memory reason) {
            emit ChangeFallbackContractAddress(slot, address(contract(this).delegatecall(abi.encodeWithSelector(User.changeFallbackContractAddress.selector, address(0), fallbackContract))))){}
        } catch (RevertError error) {
            emit ChangeFallbackContractAddress(slot, address(fallbackContract))){}
        } catch (
