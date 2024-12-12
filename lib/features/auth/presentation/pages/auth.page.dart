import 'package:emeron/core/utils/constants/constants.dart';
import 'package:emeron/core/utils/widgets/default_stack.widgets.dart';
import 'package:emeron/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:emeron/features/home/presentation/controllers/home.controller.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPage extends GetView<HomeController> {
  const AuthPage({super.key});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultStack(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Imagem do Topo
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: Image.asset(
                    AppImages.emeronlogo,
                    height: 150,
                  ),
                ),
                const SizedBox(height: 24,),

                //Form de login
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Login'.tr,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Campo Usuário
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'user'.tr,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Campo Senha
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'password'.tr,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),

                      // Botão de Login
                      ElevatedButton(
                        onPressed: () => Get.toNamed(AppRoutes.home),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[800],
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 12,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'login'.tr,
                          style: GoogleFonts.roboto(
                                      fontSize: 16,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(height: 16),

                      // Esqueceu a senha
                      TextButton(
                        onPressed: () {
                          // Lógica para recuperação de senha
                        },
                        Column(children: [
                          const Icon(Icons.arrow_back),
                          Text(
                          'goback'.tr,
                          style: const TextStyle(
                            color: Colors.blue,
                          ),
                        ],)
                        child: 
                        ),
                      ),
                    ],
                  ),
                )
              ],  
            ),
          )
        )
      )
    );
  }
}