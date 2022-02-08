/**
 * Builtin.d.ts : Built-in objects in KiwiComponents
 */

declare function _enterView(path: string, cbfunc: (retval: number) => void): void ;
declare function _alert(message: string, cbfunc: (retval: number) => void): void ;

declare function leaveView(param: any): void ;


