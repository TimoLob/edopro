{ pkgs, lib, config, inputs, devenv-zsh, ... }:

{
	imports = [ devenv-zsh.plugin ];
	zsh.enable = true;

	# https://devenv.sh/basics/
	env.GREET = "edo";

	# https://devenv.sh/packages/
	packages = [
		pkgs.git
		pkgs.premake5
		pkgs.curl
		pkgs.zip
		pkgs.libGLU
		#pkgs.vcpkg
		pkgs.nlohmann_json
		pkgs.sqlite
		pkgs.libevent
		pkgs.libgit2
		pkgs.fmt
		pkgs.glfw
		pkgs.glm
		pkgs.p7zip
		pkgs.openal
		pkgs.flac
		pkgs.libvorbis
		pkgs.upx

	];

	# https://devenv.sh/languages/
	# languages.rust.enable = true;
	languages.c.enable = true;
	languages.cplusplus.enable = true;

	# https://devenv.sh/processes/
	# processes.cargo-watch.exec = "cargo-watch";

	# https://devenv.sh/services/
	# services.postgres.enable = true;

	# https://devenv.sh/scripts/

	# https://devenv.sh/tasks/
	# tasks = {
	#   "myproj:setup".exec = "mytool build";
	#   "devenv:enterShell".after = [ "myproj:setup" ];
	# };

	# https://devenv.sh/tests/
	# https://devenv.sh/git-hooks/
	# git-hooks.hooks.shellcheck.enable = true;

	# See full reference at https://devenv.sh/reference/options/
}
