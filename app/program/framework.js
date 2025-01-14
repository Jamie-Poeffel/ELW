const prompts = require("prompts");
const colors = require("picocolors");
const { exec } = require("child_process");
const fs = require("fs");
const path = require("path");

const { green, yellow, blue, reset } = colors;

const FRAMEWORKS = [
   {
      name: "gito",
      display: "Gito",
      color: yellow,
      variants: ["Gito free", "Gito Premium"],
   },
];

async function selectFramework() {
   const response = await prompts([
      {
         type: "select",
         name: "framework",
         message: reset("Select a framework:"),
         choices: FRAMEWORKS.map((fw) => ({
            title: fw.color(fw.display),
            value: fw.name,
         })),
      },
      {
         type: (prev) => (prev ? "select" : null),
         name: "variant",
         message: reset("Select a variant:"),
         choices: (prev) =>
            FRAMEWORKS.find((fw) => fw.name === prev)?.variants.map((v) => ({
               title: v,
               value: v,
            })) ?? [],
      },
   ]);

   const { framework, variant } = response;

   if (!framework || !variant) {
      console.log(colors.red("✖ Operation cancelled."));
      return;
   }

   if (framework === "gito") {
      if (variant === "Gito free") {
         exec(
            `PowerShell -NoProfile -ExecutionPolicy Bypass -File "C:\\Windows\\System32\\ELW\\gitoFree.ps1"`,
            (error, stdout, stderr) => {
               if (error) {
                  console.error(`Error executing git clone: ${error.message}`);
                  return;
               }

               if (stderr) {
                  console.error(`stderr: ${stderr}`);
                  return;
               }

               console.log(`stdout: ${stdout}`);
            }
         );
      } else {
         throw new Error("Not implemented");
      }
   }
}

selectFramework().catch((err) => {
   console.error(colors.red(`✖ ${err.message}`));
});
