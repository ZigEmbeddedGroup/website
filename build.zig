const std = @import("std");
const zine = @import("zine");

pub fn build(b: *std.Build) !void {
    // zine.scriptyReferenceDocs(b, "content/documentation/scripty/index.md");
    try zine.addWebsite(b, .{
        .title = "Zig Embedded Group",
        .host_url = "https://microzig.tech",
        .layouts_dir_path = "layouts",
        .content_dir_path = "content",
        .static_dir_path = "static",
    });
}
