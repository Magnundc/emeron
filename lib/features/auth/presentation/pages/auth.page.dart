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
          const SizedBox(
            height: 24,
          ),

          // Formulário de Login
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.6),
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
                // Título do Formulário
                Text(
                  'Login'.tr,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),

                // Linha decorativa
                Container(
                  height: 3,
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.only(top: 4.0, bottom: 16.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.white
                            .withOpacity(0.0), // Transparente na ponta esquerda
                        Colors.white, // Branco no centro
                        Colors.white
                            .withOpacity(0.0), // Transparente na ponta direita
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                  ),
                ),

                // Campo Usuário
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'user'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),

                // Campo Senha
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'password'.tr,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 4),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),

                // Botão de Login
                ElevatedButton(
                  onPressed: () => Get.toNamed(AppRoutes.home),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 0, 9, 134),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Login'.tr,
                    style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                // Voltar
                TextButton(
                  onPressed: () => Get.toNamed(AppRoutes.home),
                  child: Row(
                    mainAxisSize: MainAxisSize
                        .min, // Mantém o tamanho ajustado ao conteúdo
                    children: [
                      const Icon(
                        Icons.replay,
                        size: 16, // Ícone de seta para voltar
                        color: Color.fromARGB(
                            255, 0, 9, 134), // Mesma cor do texto
                      ),
                      const SizedBox(
                          width: 4), // Espaçamento entre ícone e texto
                      Text(
                        'goback'.tr,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 9, 134),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ))));
  }
}
