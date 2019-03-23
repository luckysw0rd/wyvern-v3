/*

  Simple contract extension to provide a contract-global reentrancy guard on functions.

*/

pragma solidity 0.5.6;

/**
 * @title ReentrancyGuarded
 * @author Wyvern Protocol Developers
 */
contract ReentrancyGuarded {

    bool reentrancyLock = false;

    /* Prevent a contract function from being reentrant-called. */
    modifier reentrancyGuard {
        require(!reentrancyLock, "Reentrancy detected");
        reentrancyLock = true;
        _;
        reentrancyLock = false;
    }

}
