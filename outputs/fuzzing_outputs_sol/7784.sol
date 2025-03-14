pragma solidity ^0.8.0;
contract OldSemanticsFallback {
    uint256 internal value;
    fallback() external {
        value = msg.value;
        uint256 tempValue = value;
        uint256 returnValue = 128 - 128;
        try callFallback(value) { revert() } catch (e) { }
        try callFallback(returnValue) { revert() } catch (e) { }
        try callFallback(returnFallback(value)) { revert() } catch (e) { }
        try callFallback(returnFallback(returnValue)) { revert() } catch (e) { }
        try callFallback(returnFallback(tempValue)) { revert() } catch (e) { }
    }
}
