/**
 * @file	KMScriptThread.swift
 * @brief	Define KMScriptThread class
 * @par Copyright
 *   Copyright (C) 2020 Steel Wheels Project
 */

import KiwiEngine
import KiwiShell
import CoconutData
import Amber
import Foundation

public protocol KMProcessComponent {
	var isRunning: Bool { get }
}

public class KMScriptThread: AMBComponentObject, KMProcessComponent {
	public var isRunning: Bool

	private var mProcessManager:	CNProcessManager
	private var mEnvironment:	CNEnvironment
	private var mScriptThread:	KHScriptThread?

	public init(processManager pmgr: CNProcessManager, environment env: CNEnvironment) {
		isRunning		= false
		mProcessManager		= pmgr
		mEnvironment		= env
		mScriptThread   	= nil
		super.init()
	}

	public override func setup(reactObject robj: AMBReactObject, context ctxt: KEContext) -> NSError? {
		if let err = super.setup(reactObject: robj, context: ctxt) {
			return err
		}

		return nil
	}
}