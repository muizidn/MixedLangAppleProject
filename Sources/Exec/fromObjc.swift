import ObjCModule

public func fromObjc() {
    let o = FromCPP()
    o.print_hello_world_number(1)

    o.print_other()
}
