/*

  Proxy registry interface.

*/

pragma solidity 0.5.0;

import "./OwnableDelegateProxy.sol";

contract ProxyRegistryInterface {

    function delegateProxyImplementation() public returns (address);

    function proxies(address owner) public returns (OwnableDelegateProxy);

}